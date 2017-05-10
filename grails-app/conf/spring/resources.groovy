import com.common.MySecurityEventListener

// Place your Spring DSL code here
beans = {
    mySecurityEventListener(MySecurityEventListener) {
        resumeService = ref('resumeService')
    }
}
