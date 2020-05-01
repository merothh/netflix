.class public Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b:Ljava/lang/Long;

    .line 51
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->c:Ljava/lang/Long;

    .line 52
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->a:Ljava/lang/Long;

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 213
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinder:Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-virtual {v0}, Lcom/netflix/cl/model/android/PartnerInputSource;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "channelIdValue"

    .line 214
    invoke-static {p1, v0, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "&channelId="

    .line 216
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p3
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    .line 79
    invoke-static {p1}, Lo/az;->d(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Lo/az;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Lo/az;->e(Landroid/content/Intent;)Lo/aC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->c(Landroid/content/Intent;)V

    .line 92
    invoke-interface {v0}, Lo/aC;->b()Lcom/netflix/cl/model/event/session/command/Command;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 95
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "hasDeepLinks"

    .line 96
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    instance-of v0, v0, Lo/aN;

    if-eqz v0, :cond_2

    .line 104
    invoke-static {}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "internalCurrentPlayableId"

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :cond_3
    invoke-static {}, Lo/aed;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const-class v0, Lo/q;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/q;

    invoke-interface {v0, p0}, Lo/q;->e(Landroid/app/Activity;)V

    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->d:Landroid/content/Intent;

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->e()V

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->finish()V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 1

    .line 141
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->e(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->d(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->a()V

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->a:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    :cond_1
    return-void
.end method

.method d(Landroid/content/Intent;)V
    .locals 6

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "source"

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "NetflixComLaunchActivity"

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?"

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "&"

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "source="

    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 183
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "error retrieving source from deeplink uri"

    .line 186
    invoke-static {v5, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "deeplink logging %s"

    invoke-static {v5, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/DeepLinkInput;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b:Ljava/lang/Long;

    .line 196
    invoke-static {p0}, Lo/OnAttachStateChangeListener;->b(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 198
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/android/DeepLinkReferrer;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/context/android/DeepLinkReferrer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->c:Ljava/lang/Long;

    :cond_3
    return-void
.end method

.method e(Landroid/content/Intent;)Z
    .locals 4

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "source"

    .line 153
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bixbyvoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "channelIdValue"

    .line 154
    invoke-static {p0, v0, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/android/PartnerInput;

    sget-object v2, Lcom/netflix/cl/model/android/PartnerInputSource;->bixbyVoice:Lcom/netflix/cl/model/android/PartnerInputSource;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/netflix/cl/model/context/android/PartnerInput;-><init>(Lcom/netflix/cl/model/android/PartnerInputSource;Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->a:Ljava/lang/Long;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->d:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->b(Landroid/content/Intent;)V

    return-void
.end method
