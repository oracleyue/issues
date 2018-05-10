#include <string>

class Vec {
public:
    void push (int);
    int pop (void);
};

int main(int argc, char *argv[])
{
    Vec myvec;
    std::string mystr;
    // myvec.  <-- call counsel-irony, work well
    // mystr.  <-- call counsel-irony, hit C-n, bug appears

    return 0;
}
