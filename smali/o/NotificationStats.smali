.class public final Lo/NotificationStats;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final c:Z

.field private final d:Lo/Adjustment;

.field private final e:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/Adjustment;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NotificationStats;->e:Lo/InputBinding;

    iput-object p2, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    .line 38
    iget-object p1, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {p1}, Lo/Adjustment;->d()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    iput-object p1, p0, Lo/NotificationStats;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    .line 40
    iget-object p1, p0, Lo/NotificationStats;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/NotificationStats;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/NotificationStats;->c:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 23
    iget-object v0, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v0}, Lo/Adjustment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v0}, Lo/Adjustment;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCFM"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "label_standard_plan_desc_offer"

    goto :goto_0

    :cond_0
    const-string v0, "label_standard_plan_desc"

    .line 29
    :goto_0
    iget-object v1, p0, Lo/NotificationStats;->e:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 30
    iget-object v2, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v2}, Lo/Adjustment;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "planBillingFrequency"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v2, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v2}, Lo/Adjustment;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "planPrice"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    iget-object v2, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v2}, Lo/Adjustment;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasFreeTrial"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v2, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v2}, Lo/Adjustment;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hasEligibleOffer"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v2, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v2}, Lo/Adjustment;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "planPricePreTax"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final c()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/NotificationStats;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 16
    iget-object v0, p0, Lo/NotificationStats;->e:Lo/InputBinding;

    const-string v1, "label_standard_plan_name"

    invoke-virtual {v0, v1}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lo/NotificationStats;->d:Lo/Adjustment;

    invoke-virtual {v1}, Lo/Adjustment;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "planName"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
