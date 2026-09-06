import DieterAPI
@testable import DieterMac
import Testing

struct ProviderOptionTests {
    @Test func onlyMutableOptionsRemainEnabledAfterConversationStarts() {
        var fastMode = Dieter_V1_ProviderOption()
        fastMode.id = "fast_mode"
        fastMode.mutable = true
        var sessionMode = Dieter_V1_ProviderOption()
        sessionMode.id = "session_mode"

        #expect(ProviderOptionValues.isEnabled(fastMode, conversationLocked: true))
        #expect(!ProviderOptionValues.isEnabled(sessionMode, conversationLocked: true))
        #expect(ProviderOptionValues.isEnabled(sessionMode, conversationLocked: false))
    }
}
