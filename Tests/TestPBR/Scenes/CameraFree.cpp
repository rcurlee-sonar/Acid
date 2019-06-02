#include "CameraFree.hpp"

#include <Maths/Maths.hpp>
#include <Scenes/Scenes.hpp>
#include <Inputs/AxisButton.hpp>
#include <Inputs/ButtonKeyboard.hpp>
#include <Inputs/ButtonJoystick.hpp>
#include <Inputs/AxisJoystick.hpp>

namespace test
{
const float WALK_SPEED = 3.0f;
const float RUN_SPEED = 7.0f;
const Vector3f DAMP = Vector3f(20.0f, 20.0f, 20.0f);

static const Vector2f SENSITIVITY_JOYSTICK = Vector2f(-0.06f);
static const Vector2f SENSITIVITY_MOUSE = Vector2f(0.15f);

CameraFree::CameraFree() :
	m_sensitivity(1.0f),
	m_joystickVertical(0, 3),
	m_joystickHorizontal(0, 2),
	m_inputForward({ new AxisButton(ButtonCompound::Create<ButtonKeyboard>(false, Key::S, Key::Down), ButtonCompound::Create<ButtonKeyboard>(false, Key::W, Key::Up)),
		new AxisJoystick(0, 1, true) }),
	m_inputStrafe({ new AxisButton(ButtonCompound::Create<ButtonKeyboard>(false, Key::D, Key::Right), ButtonCompound::Create<ButtonKeyboard>(false, Key::A, Key::Left)),
			new AxisJoystick(0, 0, true) }),
	m_inputVertical({ AxisButton::Create<ButtonKeyboard>(Key::ControlLeft, Key::Space),
			new AxisButton(new ButtonJoystick(0, 0), new ButtonJoystick(0, 2)) }),
	m_inputSprint({ ButtonCompound::Create<ButtonKeyboard>(false, Key::ShiftLeft, Key::ShiftRight), new ButtonJoystick(0, 1) })
{
	m_nearPlane = 0.1f;
	m_farPlane = 4098.0f;
	m_fieldOfView = 70.0_deg;
}

void CameraFree::Start()
{
}

void CameraFree::Update()
{
	auto delta = Engine::Get()->GetDelta().AsSeconds();

	if (!Scenes::Get()->IsPaused())
	{
		Vector3f positionDelta;

		if (!Scenes::Get()->IsPaused())
		{
			positionDelta.m_x = m_inputStrafe.GetAmount();
			positionDelta.m_y = m_inputVertical.GetAmount();
			positionDelta.m_z = m_inputForward.GetAmount();
		}

		positionDelta *= m_inputSprint.IsDown() ? RUN_SPEED : WALK_SPEED;
		m_velocity = m_velocity.SmoothDamp(positionDelta, delta * DAMP);

		Vector2f rotationDelta = Mouse::Get()->GetDelta() * Mouse::Get()->IsCursorHidden() * SENSITIVITY_MOUSE;

		if (m_joystickVertical.IsConnected())
		{
			rotationDelta += Vector2f(m_joystickHorizontal.GetAmount(), m_joystickVertical.GetAmount()) * SENSITIVITY_JOYSTICK;
		}

		m_rotation.m_y += rotationDelta.m_x * m_sensitivity;
		m_rotation.m_x += rotationDelta.m_y * m_sensitivity;
		m_rotation.m_x = std::clamp(m_rotation.m_x, static_cast<float>(90.0_deg), static_cast<float>(270.0_deg));

		m_position.m_x += -(m_velocity.m_z * std::sin(m_rotation.m_y) + m_velocity.m_x * std::cos(m_rotation.m_y)) * delta;
		m_position.m_y += m_velocity.m_y * delta;
		m_position.m_z += (m_velocity.m_z * std::cos(m_rotation.m_y) - m_velocity.m_x * std::sin(m_rotation.m_y)) * delta;
	}

	m_viewMatrix = Matrix4::ViewMatrix(m_position, m_rotation);
	m_projectionMatrix = Matrix4::PerspectiveMatrix(GetFieldOfView(), Window::Get()->GetAspectRatio(), GetNearPlane(), GetFarPlane());

	m_viewFrustum.Update(m_viewMatrix, m_projectionMatrix);
	m_viewRay.Update(m_position, Vector2f(0.5f, 0.5f), m_viewMatrix, m_projectionMatrix);

	//auto raytest = Scenes::Get()->GetPhysics()->Raytest(m_viewRay.GetOrigin(), m_viewRay.GetPointOnRay(20.0f));
	//Log::Out("%s: %f\n", raytest.HasHit() ? raytest.GetParent()->GetName().c_str() : "", raytest.GetPointWorld().Distance(m_viewRay.GetOrigin()));
}
}
