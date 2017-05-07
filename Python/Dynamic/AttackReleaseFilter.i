
%{
#include <ATK/Dynamic/AttackReleaseFilter.h>
%}

namespace ATK
{
  template<class DataType>
  class AttackReleaseFilter: public BaseFilter
  {
  public:
    AttackReleaseFilter(int nb_channels = 1);
    ~AttackReleaseFilter();

    void set_attack(DataType attack);
    DataType get_attack() const;
    void set_release(DataType release);
    DataType get_release() const;
  };

  ATKProperty(AttackReleaseFilter<float>, attack, get_attack, set_attack);
  ATKProperty(AttackReleaseFilter<float>, release, get_release, set_release);
  ATKProperty(AttackReleaseFilter<double>, attack, get_attack, set_attack);
  ATKProperty(AttackReleaseFilter<double>, release, get_release, set_release);
}

%template(FloatAttackReleaseFilter) ATK::AttackReleaseFilter<float>;
%template(DoubleAttackReleaseFilter) ATK::AttackReleaseFilter<double>;
