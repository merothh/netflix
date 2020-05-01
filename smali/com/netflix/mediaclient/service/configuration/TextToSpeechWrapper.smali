.class public Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;
.super Ljava/lang/Object;
.source "TextToSpeechWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSpokenAccessibilityEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mSpokenAccessibilityEnabled:Z

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper$1;-><init>(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->isSpokenAccessibilityEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mSpokenAccessibilityEnabled:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->isSpokenAccessibilityEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mSpokenAccessibilityEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mSpokenAccessibilityEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isSpokenAccessibilityEnabled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Enabled Spoken Accessibility list size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public isAssistiveAudioEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/TextToSpeechWrapper;->mSpokenAccessibilityEnabled:Z

    return v0
.end method
