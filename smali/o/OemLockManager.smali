.class public final Lo/OemLockManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/StatusBarNotification;

.field private final d:Z

.field private final e:Lcom/netflix/android/moneyball/fields/ActionField;


# direct methods
.method public constructor <init>(Lo/StatusBarNotification;)V
    .locals 1

    const-string v0, "parsedData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    .line 36
    iget-object p1, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {p1}, Lo/StatusBarNotification;->b()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    iput-object p1, p0, Lo/OemLockManager;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    .line 38
    iget-object p1, p0, Lo/OemLockManager;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/OemLockManager;->d:Z

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lo/OemLockManager;->d:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->c()Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lo/OemLockManager;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v1}, Lo/StatusBarNotification;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v1}, Lo/StatusBarNotification;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/OemLockManager;->a:Lo/StatusBarNotification;

    invoke-virtual {v0}, Lo/StatusBarNotification;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
