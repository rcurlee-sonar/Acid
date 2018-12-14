#pragma once

//
// Acid header file.
//

#include "Animations/Animation/Animation.hpp"
#include "Animations/Animation/AnimationLoader.hpp"
#include "Animations/Animator.hpp"
#include "Animations/Geometry/GeometryLoader.hpp"
#include "Animations/Geometry/VertexAnimated.hpp"
#include "Animations/Geometry/VertexAnimatedData.hpp"
#include "Animations/Joint/Joint.hpp"
#include "Animations/Joint/JointData.hpp"
#include "Animations/Joint/JointTransform.hpp"
#include "Animations/Joint/JointTransformData.hpp"
#include "Animations/Keyframe/Keyframe.hpp"
#include "Animations/Keyframe/KeyframeData.hpp"
#include "Animations/MeshAnimated.hpp"
#include "Animations/Skeleton/SkeletonLoader.hpp"
#include "Animations/Skin/SkinLoader.hpp"
#include "Animations/Skin/VertexSkinData.hpp"
#include "Audio/Audio.hpp"
#include "Audio/Sound.hpp"
#include "Audio/SoundBuffer.hpp"
//#include "Audio/stb_vorbis.h"
#include "Display/Display.hpp"
#include "Engine/Engine.hpp"
#include "Engine/Exports.hpp"
#include "Engine/IModule.hpp"
#include "Engine/Log.hpp"
#include "Engine/ModuleRegister.hpp"
#include "Engine/ModuleUpdater.hpp"
#include "Events/EventChange.hpp"
#include "Events/Events.hpp"
#include "Events/EventStandard.hpp"
#include "Events/EventTime.hpp"
#include "Events/IEvent.hpp"
#include "Events/Observer.hpp"
#include "Files/Csv/FileCsv.hpp"
#include "Files/Csv/RowCsv.hpp"
#include "Files/Files.hpp"
#include "Files/IFile.hpp"
#include "Files/Json/FileJson.hpp"
#include "Files/Json/JsonSection.hpp"
#include "Files/Xml/FileXml.hpp"
#include "Files/Xml/XmlNode.hpp"
#include "Fonts/FontCharacter.hpp"
#include "Fonts/FontLine.hpp"
#include "Fonts/FontMetafile.hpp"
#include "Fonts/FontType.hpp"
#include "Fonts/FontWord.hpp"
#include "Fonts/RendererFonts.hpp"
#include "Fonts/Text.hpp"
#include "Gizmos/Gizmo.hpp"
#include "Gizmos/Gizmos.hpp"
#include "Gizmos/GizmoType.hpp"
#include "Gizmos/RendererGizmos.hpp"
#include "Guis/Gui.hpp"
#include "Guis/RendererGuis.hpp"
//#include "Helpers/dirent.h"
#include "Helpers/FileSystem.hpp"
#include "Helpers/String.hpp"
#include "Inputs/AxisButton.hpp"
#include "Inputs/AxisCompound.hpp"
#include "Inputs/AxisJoystick.hpp"
#include "Inputs/ButtonCompound.hpp"
#include "Inputs/ButtonJoystick.hpp"
#include "Inputs/ButtonKeyboard.hpp"
#include "Inputs/ButtonMouse.hpp"
#include "Inputs/IAxis.hpp"
#include "Inputs/IButton.hpp"
#include "Inputs/Joysticks.hpp"
#include "Inputs/Keyboard.hpp"
#include "Inputs/Mouse.hpp"
#include "Lights/Fog.hpp"
#include "Lights/Light.hpp"
#include "Materials/Material.hpp"
#include "Materials/MaterialDefault.hpp"
#include "Materials/PipelineMaterial.hpp"
#include "Maths/Colour.hpp"
#include "Maths/Delta.hpp"
#include "Maths/Interpolation/SmoothFloat.hpp"
#include "Maths/Maths.hpp"
#include "Maths/Matrix2.hpp"
#include "Maths/Matrix3.hpp"
#include "Maths/Matrix4.hpp"
#include "Maths/Quaternion.hpp"
#include "Maths/Time.hpp"
#include "Maths/Timer.hpp"
#include "Maths/Transform.hpp"
#include "Maths/Vector2.hpp"
#include "Maths/Vector3.hpp"
#include "Maths/Vector4.hpp"
#include "Maths/Visual/DriverBounce.hpp"
#include "Maths/Visual/DriverConstant.hpp"
#include "Maths/Visual/DriverFade.hpp"
#include "Maths/Visual/DriverLinear.hpp"
#include "Maths/Visual/DriverSinwave.hpp"
#include "Maths/Visual/DriverSlide.hpp"
#include "Maths/Visual/IDriver.hpp"
#include "Meshes/Mesh.hpp"
#include "Meshes/MeshRender.hpp"
#include "Meshes/RendererMeshes.hpp"
#include "Models/IVertex.hpp"
#include "Models/Model.hpp"
#include "Models/Obj/ModelObj.hpp"
#include "Models/Shapes/MeshPattern.hpp"
#include "Models/Shapes/MeshSimple.hpp"
#include "Models/Shapes/ModelCube.hpp"
#include "Models/Shapes/ModelCylinder.hpp"
#include "Models/Shapes/ModelDisk.hpp"
#include "Models/Shapes/ModelRectangle.hpp"
#include "Models/Shapes/ModelSphere.hpp"
#include "Models/VertexModel.hpp"
#include "Models/VertexModelData.hpp"
#include "Network/Ftp/Ftp.hpp"
#include "Network/Ftp/FtpDataChannel.hpp"
#include "Network/Ftp/FtpResponse.hpp"
#include "Network/Ftp/FtpResponseDirectory.hpp"
#include "Network/Ftp/FtpResponseListing.hpp"
#include "Network/Http/Http.hpp"
#include "Network/Http/HttpRequest.hpp"
#include "Network/Http/HttpResponse.hpp"
#include "Network/IpAddress.hpp"
#include "Network/Packet.hpp"
#include "Network/Socket.hpp"
#include "Network/SocketSelector.hpp"
#include "Network/Tcp/TcpListener.hpp"
#include "Network/Tcp/TcpSocket.hpp"
#include "Network/Udp/UdpSocket.hpp"
#include "Noise/Noise.hpp"
#include "Particles/Emitters/EmitterCircle.hpp"
#include "Particles/Emitters/EmitterLine.hpp"
#include "Particles/Emitters/EmitterPoint.hpp"
#include "Particles/Emitters/EmitterSphere.hpp"
#include "Particles/Emitters/ParticleEmitter.hpp"
#include "Particles/Particle.hpp"
#include "Particles/Particles.hpp"
#include "Particles/ParticleSystem.hpp"
#include "Particles/ParticleType.hpp"
#include "Particles/RendererParticles.hpp"
#include "Physics/Colliders/Collider.hpp"
#include "Physics/Colliders/ColliderCapsule.hpp"
#include "Physics/Colliders/ColliderCone.hpp"
#include "Physics/Colliders/ColliderConvexHull.hpp"
#include "Physics/Colliders/ColliderCube.hpp"
#include "Physics/Colliders/ColliderCylinder.hpp"
#include "Physics/Colliders/ColliderHeightfield.hpp"
#include "Physics/Colliders/ColliderSphere.hpp"
#include "Physics/CollisionObject.hpp"
#include "Physics/Force.hpp"
#include "Physics/Frustum.hpp"
#include "Physics/KinematicCharacter.hpp"
#include "Physics/Ray.hpp"
#include "Physics/Rigidbody.hpp"
#include "Post/Deferred/RendererDeferred.hpp"
#include "Post/Filters/FilterBlur.hpp"
#include "Post/Filters/FilterCrt.hpp"
#include "Post/Filters/FilterDarken.hpp"
#include "Post/Filters/FilterDefault.hpp"
#include "Post/Filters/FilterDof.hpp"
#include "Post/Filters/FilterEmboss.hpp"
#include "Post/Filters/FilterFxaa.hpp"
#include "Post/Filters/FilterGrain.hpp"
#include "Post/Filters/FilterGrey.hpp"
#include "Post/Filters/FilterLensflare.hpp"
#include "Post/Filters/FilterNegative.hpp"
#include "Post/Filters/FilterPixel.hpp"
#include "Post/Filters/FilterSepia.hpp"
#include "Post/Filters/FilterSsao.hpp"
#include "Post/Filters/FilterTiltshift.hpp"
#include "Post/Filters/FilterTone.hpp"
#include "Post/Filters/FilterVignette.hpp"
#include "Post/Filters/FilterWobble.hpp"
#include "Post/PostFilter.hpp"
#include "Post/PostPipeline.hpp"
#include "Post/Pipelines/PipelineBlur.hpp"
#include "Renderer/Buffers/Buffer.hpp"
#include "Renderer/Buffers/IndexBuffer.hpp"
#include "Renderer/Buffers/InstanceBuffer.hpp"
#include "Renderer/Buffers/StorageBuffer.hpp"
#include "Renderer/Buffers/UniformBuffer.hpp"
#include "Renderer/Buffers/VertexBuffer.hpp"
#include "Renderer/Commands/CommandBuffer.hpp"
#include "Renderer/Descriptors/DescriptorSet.hpp"
#include "Renderer/Descriptors/IDescriptor.hpp"
#include "Renderer/Handlers/DescriptorsHandler.hpp"
#include "Renderer/Handlers/PushHandler.hpp"
#include "Renderer/Handlers/StorageHandler.hpp"
#include "Renderer/Handlers/UniformHandler.hpp"
#include "Renderer/IManagerRender.hpp"
#include "Renderer/IRenderer.hpp"
#include "Renderer/Pipelines/Compute.hpp"
#include "Renderer/Pipelines/IPipeline.hpp"
#include "Renderer/Pipelines/Pipeline.hpp"
#include "Renderer/Pipelines/PipelineCreate.hpp"
#include "Renderer/Pipelines/ShaderProgram.hpp"
#include "Renderer/Renderer.hpp"
#include "Renderer/RendererRegister.hpp"
#include "Renderer/Renderpass/Renderpass.hpp"
#include "Renderer/Renderpass/RenderpassCreate.hpp"
#include "Renderer/RenderStage.hpp"
#include "Renderer/Swapchain/DepthStencil.hpp"
#include "Renderer/Swapchain/Framebuffers.hpp"
#include "Renderer/Swapchain/Swapchain.hpp"
#include "Resources/IResource.hpp"
#include "Resources/Resources.hpp"
#include "Scenes/Camera.hpp"
#include "Scenes/Component.hpp"
#include "Scenes/ComponentRegister.hpp"
#include "Scenes/Entity.hpp"
#include "Scenes/EntityPrefab.hpp"
#include "Scenes/Scene.hpp"
#include "Scenes/ScenePhysics.hpp"
#include "Scenes/Scenes.hpp"
#include "Scenes/SceneStructure.hpp"
#include "Serialized/Metadata.hpp"
#include "Serialized/Serialize.hpp"
#include "Shadows/RendererShadows.hpp"
#include "Shadows/ShadowBox.hpp"
#include "Shadows/ShadowRender.hpp"
#include "Shadows/Shadows.hpp"
#include "Skyboxes/MaterialSkybox.hpp"
#include "Textures/Cubemap.hpp"
//#include "Textures/stb_image.h"
//#include "Textures/stb_image_write.h"
#include "Textures/Texture.hpp"
#include "Threads/Thread.hpp"
#include "Threads/ThreadPool.hpp"
#include "Uis/Inputs/UiInputButton.hpp"
#include "Uis/Inputs/UiInputDelay.hpp"
#include "Uis/Inputs/UiInputGrabber.hpp"
#include "Uis/Inputs/UiInputSlider.hpp"
#include "Uis/Inputs/UiInputText.hpp"
#include "Uis/UiBound.hpp"
#include "Uis/UiObject.hpp"
#include "Uis/Uis.hpp"
#include "Uis/UiSelector.hpp"
#include "Uis/UiStartLogo.hpp"
