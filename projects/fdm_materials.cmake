
ExternalProject_Add(fdm_materials
    GIT_REPOSITORY https://github.com/SunPSoftware/fdm_materials-3-2
    GIT_TAG origin/${FDMMATERIALS_BRANCH_OR_TAG}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
)

SetProjectDependencies(TARGET fdm_materials DEPENDS Cura)
