.class public Lo/pm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pm$Activity;
    }
.end annotation


# instance fields
.field private atEndPlay:Lo/pm$Activity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "atEnd"
    .end annotation
.end field

.field private atStartPlay:Lo/pm$Activity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "atStart"
    .end annotation
.end field

.field private final transient d:Landroid/content/Context;

.field private final present:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "present"
    .end annotation
.end field

.field private final scale:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scale"
    .end annotation
.end field

.field private final technology:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "technology"
    .end annotation
.end field

.field private wasCharged:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wasCharged"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lo/pm;->d:Landroid/content/Context;

    .line 107
    iput-boolean p2, p0, Lo/pm;->present:Z

    .line 108
    iput-object p3, p0, Lo/pm;->technology:Ljava/lang/String;

    .line 109
    iput p4, p0, Lo/pm;->scale:I

    .line 111
    new-instance p1, Lo/pm$Activity;

    invoke-direct {p1}, Lo/pm$Activity;-><init>()V

    iput-object p1, p0, Lo/pm;->atStartPlay:Lo/pm$Activity;

    .line 112
    new-instance p1, Lo/pm$Activity;

    invoke-direct {p1}, Lo/pm$Activity;-><init>()V

    iput-object p1, p0, Lo/pm;->atEndPlay:Lo/pm$Activity;

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 173
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "nf_playreport"

    const-string v2, "unable to request battery stats"

    .line 176
    invoke-static {v0, p0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Lo/pm;
    .locals 5

    .line 155
    invoke-static {p0}, Lo/pm;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lo/pm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lo/pm;-><init>(Landroid/content/Context;ZLjava/lang/String;I)V

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "present"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 163
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "technology"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scale"

    .line 164
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 166
    new-instance v1, Lo/pm;

    invoke-direct {v1, p0, v2, v3, v0}, Lo/pm;-><init>(Landroid/content/Context;ZLjava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public c(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lo/pm;->atStartPlay:Lo/pm$Activity;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/pm;->atEndPlay:Lo/pm$Activity;

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 190
    iget-object v1, p1, Lo/pm$Activity;->status:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lo/pm$Activity;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object p1, p1, Lo/pm$Activity;->status:Ljava/lang/Integer;

    .line 191
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public d(Z)V
    .locals 10

    .line 135
    iget-object v0, p0, Lo/pm;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/pm;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    const-string v2, "level"

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v1, 0x0

    const-string v2, "health"

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "plugged"

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "status"

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "temperature"

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v2, "voltage"

    .line 146
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz p1, :cond_1

    .line 149
    iget-object v3, p0, Lo/pm;->atStartPlay:Lo/pm$Activity;

    invoke-virtual/range {v3 .. v9}, Lo/pm$Activity;->c(IIIIII)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v3, p0, Lo/pm;->atEndPlay:Lo/pm$Activity;

    invoke-virtual/range {v3 .. v9}, Lo/pm$Activity;->c(IIIIII)V

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lo/pm;->wasCharged:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lo/pm;->wasCharged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/pm;->present:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
