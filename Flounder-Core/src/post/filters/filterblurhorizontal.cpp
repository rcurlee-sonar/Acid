#include "filterblurhorizontal.h"

namespace flounder
{
	filterblurhorizontal::filterblurhorizontal(const float &sizeScalar) :
		ipostfilter("filterBlurHorizontal", "res/shaders/filters/blurhorizontalFragment.glsl", fbo::newFBO()->fitToScreen(sizeScalar)->create())
	{
		m_widthValue = static_cast<int>(display::get()->getWidth() * sizeScalar);
		m_scaleValue = 2.0f;
		m_fitToDisplay = true;
		m_sizeScalar = sizeScalar;
	}

	filterblurhorizontal::filterblurhorizontal(const int &width, const int &height) :
		ipostfilter("filterBlurHorizontal", "res/shaders/filters/blurhorizontalFragment.glsl", fbo::newFBO()->setSize(width, height)->create())
	{
		m_widthValue = width;
		m_scaleValue = 2.0f;
		m_fitToDisplay = false;
		m_sizeScalar = -1.0f;
	}

	filterblurhorizontal::~filterblurhorizontal()
	{
	}

	void filterblurhorizontal::storeValues()
	{
		if (m_fitToDisplay)
		{
			m_widthValue = static_cast<int>(display::get()->getWidth() * m_sizeScalar);
		}

		m_shader->loadUniform("width", static_cast<float>(m_widthValue));
		m_shader->loadUniform("scale", m_scaleValue);
	}
}