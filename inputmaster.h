#pragma once

#include <Urho3D/Input/Input.h>
#include "mastercontrol.h"

namespace Urho3D {
class Drawable;
class Node;
class Scene;
class Sprite;
}

using namespace Urho3D;

class InputMaster : public Object
{
  URHO3D_OBJECT(InputMaster, Object);
public:
  InputMaster(
    Context * const context,
    MasterControl * const masterControl
  );

private:
  MasterControl * const masterControl_;
  void HandleMouseDown(StringHash eventType, VariantMap &eventData);
  void HandleKeyDown(StringHash eventType, VariantMap &eventData);
  void HandleMouseUp(StringHash eventType, VariantMap &eventData);
};
