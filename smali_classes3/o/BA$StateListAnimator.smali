.class final Lo/BA$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BA;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/BA;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/BA$StateListAnimator;->b:Lo/BA;

    iput-object p2, p0, Lo/BA$StateListAnimator;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/BA$StateListAnimator;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lo/BA$StateListAnimator;->b:Lo/BA;

    invoke-virtual {v0}, Lo/BA;->b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e()Lo/BH;

    move-result-object v0

    iget-object v1, p0, Lo/BA$StateListAnimator;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/BA$StateListAnimator;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/BH;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
