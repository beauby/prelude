(projectile-register-project-type 'cmake '("CMakeLists.txt")
                                  :configure "cmake -B build ."
                                  :compile "make -C build -j"
                                  :test "make -C build test"
                                  :test-suffix "_test.cc")
