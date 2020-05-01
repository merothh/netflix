.class public final Lo/NotificationListenerService;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/NotificationAssistantService;


# direct methods
.method public constructor <init>(Lo/NotificationAssistantService;)V
    .locals 1

    const-string v0, "changePlanView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NotificationListenerService;->d:Lo/NotificationAssistantService;

    return-void
.end method


# virtual methods
.method public final e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "changePlanViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChangePlanClickListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lo/NotificationListenerService;->d:Lo/NotificationAssistantService;

    invoke-virtual {p1}, Lo/NotificationStats;->e()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/NotificationAssistantService;->setPlanNameText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lo/NotificationListenerService;->d:Lo/NotificationAssistantService;

    invoke-virtual {p1}, Lo/NotificationStats;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/NotificationAssistantService;->setPlanDescriptionText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lo/NotificationListenerService;->d:Lo/NotificationAssistantService;

    invoke-virtual {p1}, Lo/NotificationStats;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/NotificationAssistantService;->setShowChangePlan(Z)V

    .line 11
    iget-object p1, p0, Lo/NotificationListenerService;->d:Lo/NotificationAssistantService;

    invoke-virtual {p1, p2}, Lo/NotificationAssistantService;->setChangePlanClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
