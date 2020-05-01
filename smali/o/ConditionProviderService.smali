.class public final Lo/ConditionProviderService;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;
    .locals 1

    const-string v0, "changePlanView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lo/NotificationListenerService;

    invoke-direct {v0, p1}, Lo/NotificationListenerService;-><init>(Lo/NotificationAssistantService;)V

    return-object v0
.end method
