.class public final Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;

.field private static debounceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;->INSTANCE:Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;

    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;->debounceEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDebounceEnabled()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;->debounceEnabled:Z

    return v0
.end method

.method public final setDebounceEnabled(Z)V
    .locals 0

    .line 8
    sput-boolean p1, Lcom/netflix/mediaclient/acquisition/view/SignupNativeConfig;->debounceEnabled:Z

    return-void
.end method
