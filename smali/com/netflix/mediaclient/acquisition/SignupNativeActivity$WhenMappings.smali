.class public final synthetic Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->values()[Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->SIGN_IN:Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->SIGN_OUT:Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->values()[Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->NORMAL_BACK:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->INTERRUPT_WITH_DIALOG:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
