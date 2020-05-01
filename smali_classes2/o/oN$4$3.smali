.class Lo/oN$4$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oN$4;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/oN$4;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;


# direct methods
.method constructor <init>(Lo/oN$4;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/oN$4$3;->a:Lo/oN$4;

    iput-object p2, p0, Lo/oN$4$3;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    iput-object p3, p0, Lo/oN$4$3;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lo/oN$4$3;->a:Lo/oN$4;

    iget-object v0, v0, Lo/oN$4;->c:Lo/oN;

    iget-object v1, p0, Lo/oN$4$3;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    iget-object v2, p0, Lo/oN$4$3;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v1, v2}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
