set(FLOUNDER_HEADERS_
        "Animations/Animation/Animation.hpp"
        "Animations/Animation/AnimationLoader.hpp"
        "Animations/Animator.hpp"
        "Animations/Geometry/GeometryLoader.hpp"
        "Animations/Geometry/VertexAnimated.hpp"
        "Animations/Geometry/VertexAnimatedData.hpp"
        "Animations/Joint/Joint.hpp"
        "Animations/Joint/JointData.hpp"
        "Animations/Joint/JointTransform.hpp"
        "Animations/Joint/JointTransformData.hpp"
        "Animations/Keyframe/Keyframe.hpp"
        "Animations/Keyframe/KeyframeData.hpp"
        "Animations/MeshAnimated.hpp"
        "Animations/Skeleton/SkeletonLoader.hpp"
        "Animations/Skin/SkinLoader.hpp"
        "Animations/Skin/VertexSkinData.hpp"
        "Animations/MaterialAnimated.hpp"
        "Audio/Audio.hpp"
        "Audio/Sound.hpp"
        "Audio/SoundBuffer.hpp"
        "Display/Display.hpp"
        "Engine/Engine.hpp"
        "Engine/Exports.hpp"
        "Engine/IModule.hpp"
        "Engine/IUpdater.hpp"
        "Engine/ModuleRegister.hpp"
        "Events/EventChange.hpp"
        "Events/Events.hpp"
        "Events/EventStandard.hpp"
        "Events/EventTime.hpp"
        "Events/IEvent.hpp"
        "Files/Config.hpp"
        "Files/ConfigKey.hpp"
        "Files/Csv/FileCsv.hpp"
        "Files/IFile.hpp"
        "Files/Json/FileJson.hpp"
        "Files/Json/JsonSection.hpp"
        "Files/LoadedValue.hpp"
        "Flounder.hpp"
        "Fonts/FontCharacter.hpp"
        "Fonts/FontFamily.hpp"
        "Fonts/FontLine.hpp"
        "Fonts/FontMetafile.hpp"
        "Fonts/FontType.hpp"
        "Fonts/FontWord.hpp"
        "Fonts/RendererFonts.hpp"
        "Fonts/Text.hpp"
        "Guis/Gui.hpp"
        "Guis/RendererGuis.hpp"
        "Helpers/FileSystem.hpp"
        "Helpers/FormatString.hpp"
        "Helpers/SquareArray.hpp"
        "Inputs/AxisButton.hpp"
        "Inputs/AxisCompound.hpp"
        "Inputs/AxisJoystick.hpp"
        "Inputs/ButtonCompound.hpp"
        "Inputs/ButtonJoystick.hpp"
        "Inputs/ButtonKeyboard.hpp"
        "Inputs/ButtonMouse.hpp"
        "Inputs/IAxis.hpp"
        "Inputs/IButton.hpp"
        "Inputs/Joysticks.hpp"
        "Inputs/Keyboard.hpp"
        "Inputs/Mouse.hpp"
        "Lights/Fog.hpp"
        "Lights/Light.hpp"
        "Materials/IMaterial.hpp"
        "Materials/MaterialDefault.hpp"
        "Materials/PipelineMaterial.hpp"
        "Maths/Colour.hpp"
        "Maths/Constraint3.hpp"
        "Maths/Delta.hpp"
        "Maths/Interpolation/SmoothFloat.hpp"
        "Maths/Maths.hpp"
        "Maths/Matrix2.hpp"
        "Maths/Matrix3.hpp"
        "Maths/Matrix4.hpp"
        "Maths/Noise/Noise.hpp"
        "Maths/Quaternion.hpp"
        "Maths/Timer.hpp"
        "Maths/Transform.hpp"
        "Maths/Vector2.hpp"
        "Maths/Vector3.hpp"
        "Maths/Vector4.hpp"
        "Maths/Visual/DriverBounce.hpp"
        "Maths/Visual/DriverConstant.hpp"
        "Maths/Visual/DriverFade.hpp"
        "Maths/Visual/DriverLinear.hpp"
        "Maths/Visual/DriverSinwave.hpp"
        "Maths/Visual/DriverSlide.hpp"
        "Maths/Visual/IDriver.hpp"
        "Meshes/Mesh.hpp"
        "Meshes/MeshRender.hpp"
        "Meshes/RendererMeshes.hpp"
        "Models/IVertex.hpp"
        "Models/Model.hpp"
        "Models/Shapes/MeshPattern.hpp"
        "Models/Shapes/MeshSimple.hpp"
        "Models/Shapes/ShapeCube.hpp"
        "Models/Shapes/ShapeCylinder.hpp"
        "Models/Shapes/ShapeDisk.hpp"
        "Models/Shapes/ShapeRectangle.hpp"
        "Models/Shapes/ShapeSphere.hpp"
        "Models/VertexModel.hpp"
        "Models/VertexModelData.hpp"
        "Objects/Behaviour.hpp"
        "Objects/Component.hpp"
        "Objects/ComponentRegister.hpp"
        "Objects/GameObject.hpp"
        "Particles/Particle.hpp"
        "Particles/Particles.hpp"
        "Particles/ParticleSystem.hpp"
        "Particles/ParticleType.hpp"
        "Particles/RendererParticles.hpp"
        "Particles/Spawns/ISpawnParticle.hpp"
        "Particles/Spawns/SpawnCircle.hpp"
        "Particles/Spawns/SpawnLine.hpp"
        "Particles/Spawns/SpawnPoint.hpp"
        "Particles/Spawns/SpawnSphere.hpp"
        "Physics/ColliderAabb.hpp"
        "Physics/ColliderSphere.hpp"
        "Physics/Frustum.hpp"
        "Physics/ICollider.hpp"
        "Physics/Intersect.hpp"
        "Physics/Ray.hpp"
        "Physics/Rigidbody.hpp"
        "Post/Deferred/RendererDeferred.hpp"
        "Post/Filters/FilterBlurVertical.hpp"
        "Post/Filters/FilterBlurHorizontal.hpp"
        "Post/Filters/FilterCrt.hpp"
        "Post/Filters/FilterDarken.hpp"
        "Post/Filters/FilterDefault.hpp"
        "Post/Filters/FilterEmboss.hpp"
        "Post/Filters/FilterFxaa.hpp"
        "Post/Filters/FilterGrain.hpp"
        "Post/Filters/FilterGrey.hpp"
        "Post/Filters/FilterLensflare.hpp"
        "Post/Filters/FilterNegative.hpp"
        "Post/Filters/FilterPixel.hpp"
        "Post/Filters/FilterSepia.hpp"
        "Post/Filters/FilterTiltshift.hpp"
        "Post/Filters/FilterTone.hpp"
        "Post/Filters/FilterWobble.hpp"
        "Post/Pipelines/PipelineGaussian.hpp"
        "Post/IPostFilter.hpp"
        "Post/IPostPipeline.hpp"
        "Renderer/Buffers/Buffer.hpp"
        "Renderer/Buffers/CommandBuffer.hpp"
        "Renderer/Buffers/IndexBuffer.hpp"
        "Renderer/Buffers/UniformBuffer.hpp"
        "Renderer/Buffers/VertexBuffer.hpp"
        "Renderer/Descriptors/DescriptorSet.hpp"
        "Renderer/Descriptors/IDescriptor.hpp"
        "Renderer/Handlers/DescriptorsHandler.hpp"
        "Renderer/Handlers/UniformHandler.hpp"
        "Renderer/IManagerRender.hpp"
        "Renderer/IRenderer.hpp"
        "Renderer/Pipelines/Pipeline.hpp"
        "Renderer/Pipelines/PipelineCreate.hpp"
        "Renderer/Pipelines/ShaderProgram.hpp"
        "Renderer/Queue/QueueFamily.hpp"
        "Renderer/Renderer.hpp"
        "Renderer/Renderpass/Renderpass.hpp"
        "Renderer/Renderpass/RenderpassCreate.hpp"
        "Renderer/RenderStage.hpp"
        "Renderer/Screenshot/Screenshot.hpp"
        "Renderer/Swapchain/DepthStencil.hpp"
        "Renderer/Swapchain/Framebuffers.hpp"
        "Renderer/Swapchain/Swapchain.hpp"
        "Resources/IResource.hpp"
        "Resources/Resources.hpp"
        "Scenes/ICamera.hpp"
        "Scenes/IManagerUis.hpp"
        "Scenes/ISpatialStructure.hpp"
        "Objects/Prefabs/PrefabObject.hpp"
        "Scenes/IScene.hpp"
        "Scenes/Scenes.hpp"
        "Scenes/SceneStructure.hpp"
        "Shadows/RendererShadows.hpp"
        "Shadows/ShadowBox.hpp"
        "Shadows/ShadowRender.hpp"
        "Shadows/Shadows.hpp"
        "Skyboxes/CelestialBody.hpp"
        "Skyboxes/MaterialSkybox.hpp"
        "Tasks/Tasks.hpp"
        "Textures/Cubemap.hpp"
        "Textures/Texture.hpp"
        "Uis/UiBound.hpp"
        "Uis/UiInputButton.hpp"
        "Uis/UiInputDelay.hpp"
        "Uis/UiInputGrabber.hpp"
        "Uis/UiInputSlider.hpp"
        "Uis/UiInputText.hpp"
        "Uis/UiObject.hpp"
        "Uis/Uis.hpp"
        "Uis/UiSelector.hpp"
        "Uis/UiStartLogo.hpp"
        "Worlds/Worlds.hpp"
        "Worlds/IWorld.hpp"
        )

set(FLOUNDER_SOURCES_
        "Animations/Animation/Animation.cpp"
        "Animations/Animation/AnimationLoader.cpp"
        "Animations/Animator.cpp"
        "Animations/Geometry/GeometryLoader.cpp"
        "Animations/Geometry/VertexAnimated.cpp"
        "Animations/Geometry/VertexAnimatedData.cpp"
        "Animations/Joint/Joint.cpp"
        "Animations/Joint/JointData.cpp"
        "Animations/Joint/JointTransform.cpp"
        "Animations/Joint/JointTransformData.cpp"
        "Animations/Keyframe/Keyframe.cpp"
        "Animations/Keyframe/KeyframeData.cpp"
        "Animations/MeshAnimated.cpp"
        "Animations/Skeleton/SkeletonLoader.cpp"
        "Animations/Skin/SkinLoader.cpp"
        "Animations/Skin/VertexSkinData.cpp"
        "Animations/MaterialAnimated.cpp"
        "Audio/Audio.cpp"
        "Audio/Sound.cpp"
        "Audio/SoundBuffer.cpp"
        "Display/Display.cpp"
        "Engine/Engine.cpp"
        "Engine/ModuleRegister.cpp"
        "Events/EventChange.cpp"
        "Events/Events.cpp"
        "Events/EventStandard.cpp"
        "Events/EventTime.cpp"
        "Files/Config.cpp"
        "Files/ConfigKey.cpp"
        "Files/Csv/FileCsv.cpp"
        "Files/Json/FileJson.cpp"
        "Files/Json/JsonSection.cpp"
        "Files/LoadedValue.cpp"
        "Fonts/FontCharacter.cpp"
        "Fonts/FontFamily.cpp"
        "Fonts/FontLine.cpp"
        "Fonts/FontMetafile.cpp"
        "Fonts/FontType.cpp"
        "Fonts/FontWord.cpp"
        "Fonts/RendererFonts.cpp"
        "Fonts/Text.cpp"
        "Guis/Gui.cpp"
        "Guis/RendererGuis.cpp"
        "Helpers/FileSystem.cpp"
        "Helpers/FormatString.cpp"
        "Helpers/SquareArray.cpp"
        "Inputs/AxisButton.cpp"
        "Inputs/AxisCompound.cpp"
        "Inputs/AxisJoystick.cpp"
        "Inputs/ButtonCompound.cpp"
        "Inputs/ButtonJoystick.cpp"
        "Inputs/ButtonKeyboard.cpp"
        "Inputs/ButtonMouse.cpp"
        "Inputs/Joysticks.cpp"
        "Inputs/Keyboard.cpp"
        "Inputs/Mouse.cpp"
        "Lights/Fog.cpp"
        "Lights/Light.cpp"
        "Materials/MaterialDefault.cpp"
        "Materials/PipelineMaterial.cpp"
        "Maths/Colour.cpp"
        "Maths/Constraint3.cpp"
        "Maths/Delta.cpp"
        "Maths/Interpolation/SmoothFloat.cpp"
        "Maths/Maths.cpp"
        "Maths/Matrix2.cpp"
        "Maths/Matrix3.cpp"
        "Maths/Matrix4.cpp"
        "Maths/Noise/Noise.cpp"
        "Maths/Quaternion.cpp"
        "Maths/Timer.cpp"
        "Maths/Transform.cpp"
        "Maths/Vector2.cpp"
        "Maths/Vector3.cpp"
        "Maths/Vector4.cpp"
        "Maths/Visual/DriverBounce.cpp"
        "Maths/Visual/DriverConstant.cpp"
        "Maths/Visual/DriverFade.cpp"
        "Maths/Visual/DriverLinear.cpp"
        "Maths/Visual/DriverSinwave.cpp"
        "Maths/Visual/DriverSlide.cpp"
        "Meshes/Mesh.cpp"
        "Meshes/MeshRender.cpp"
        "Meshes/RendererMeshes.cpp"
        "Models/Model.cpp"
        "Models/Shapes/MeshPattern.cpp"
        "Models/Shapes/MeshSimple.cpp"
        "Models/Shapes/ShapeCube.cpp"
        "Models/Shapes/ShapeCylinder.cpp"
        "Models/Shapes/ShapeDisk.cpp"
        "Models/Shapes/ShapeRectangle.cpp"
        "Models/Shapes/ShapeSphere.cpp"
        "Models/VertexModel.cpp"
        "Models/VertexModelData.cpp"
        "Objects/Behaviour.cpp"
        "Objects/Component.cpp"
        "Objects/ComponentRegister.cpp"
        "Objects/GameObject.cpp"
        "Particles/Particle.cpp"
        "Particles/Particles.cpp"
        "Particles/ParticleSystem.cpp"
        "Particles/ParticleType.cpp"
        "Particles/RendererParticles.cpp"
        "Particles/Spawns/SpawnCircle.cpp"
        "Particles/Spawns/SpawnLine.cpp"
        "Particles/Spawns/SpawnPoint.cpp"
        "Particles/Spawns/SpawnSphere.cpp"
        "Physics/ColliderAabb.cpp"
        "Physics/ColliderSphere.cpp"
        "Physics/Frustum.cpp"
        "Physics/Ray.cpp"
        "Physics/Rigidbody.cpp"
        "Post/Deferred/RendererDeferred.cpp"
        "Post/Filters/FilterBlurVertical.cpp"
        "Post/Filters/FilterBlurHorizontal.cpp"
        "Post/Filters/FilterCrt.cpp"
        "Post/Filters/FilterDarken.cpp"
        "Post/Filters/FilterDefault.cpp"
        "Post/Filters/FilterEmboss.cpp"
        "Post/Filters/FilterFxaa.cpp"
        "Post/Filters/FilterGrain.cpp"
        "Post/Filters/FilterGrey.cpp"
        "Post/Filters/FilterLensflare.cpp"
        "Post/Filters/FilterNegative.cpp"
        "Post/Filters/FilterPixel.cpp"
        "Post/Filters/FilterSepia.cpp"
        "Post/Filters/FilterTiltshift.cpp"
        "Post/Filters/FilterTone.cpp"
        "Post/Filters/FilterWobble.cpp"
        "Post/Pipelines/PipelineGaussian.cpp"
        "Post/IPostFilter.cpp"
        "Post/IPostPipeline.cpp"
        "Renderer/Buffers/Buffer.cpp"
        "Renderer/Buffers/CommandBuffer.cpp"
        "Renderer/Buffers/IndexBuffer.cpp"
        "Renderer/Buffers/UniformBuffer.cpp"
        "Renderer/Buffers/VertexBuffer.cpp"
        "Renderer/Descriptors/DescriptorSet.cpp"
        "Renderer/Handlers/DescriptorsHandler.cpp"
        "Renderer/Handlers/UniformHandler.cpp"
        "Renderer/IManagerRender.cpp"
        "Renderer/Pipelines/Pipeline.cpp"
        "Renderer/Pipelines/ShaderProgram.cpp"
        "Renderer/Queue/QueueFamily.cpp"
        "Renderer/Renderer.cpp"
        "Renderer/Renderpass/Renderpass.cpp"
        "Renderer/RenderStage.cpp"
        "Renderer/Screenshot/Screenshot.cpp"
        "Renderer/Swapchain/DepthStencil.cpp"
        "Renderer/Swapchain/Framebuffers.cpp"
        "Renderer/Swapchain/Swapchain.cpp"
        "Resources/Resources.cpp"
        "Objects/Prefabs/PrefabObject.cpp"
        "Scenes/Scenes.cpp"
        "Scenes/SceneStructure.cpp"
        "Shadows/RendererShadows.cpp"
        "Shadows/ShadowBox.cpp"
        "Shadows/ShadowRender.cpp"
        "Shadows/Shadows.cpp"
        "Skyboxes/CelestialBody.cpp"
        "Skyboxes/MaterialSkybox.cpp"
        "Tasks/Tasks.cpp"
        "Textures/Cubemap.cpp"
        "Textures/Texture.cpp"
        "Uis/UiBound.cpp"
        "Uis/UiInputButton.cpp"
        "Uis/UiInputDelay.cpp"
        "Uis/UiInputGrabber.cpp"
        "Uis/UiInputSlider.cpp"
        "Uis/UiInputText.cpp"
        "Uis/UiObject.cpp"
        "Uis/Uis.cpp"
        "Uis/UiSelector.cpp"
        "Uis/UiStartLogo.cpp"
        "Worlds/Worlds.cpp"
        )

source_group("Header Files" FILES ${FLOUNDER_HEADERS_})
source_group("Source Files" FILES ${FLOUNDER_SOURCES_})

set(FLOUNDER_SOURCES
        ${FLOUNDER_HEADERS_}
        ${FLOUNDER_SOURCES_}
        )