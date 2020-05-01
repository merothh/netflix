.class Lo/co$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lo/Bb;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/co;


# direct methods
.method constructor <init>(Lo/co;Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lo/co$14;->e:Lo/co;

    iput-object p2, p0, Lo/co$14;->c:Lo/Bb;

    iput-object p3, p0, Lo/co$14;->b:Ljava/util/List;

    iput-object p4, p0, Lo/co$14;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 284
    invoke-static {}, Lo/aeB;->a()Z

    .line 285
    iget-object v0, p0, Lo/co$14;->e:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$14;->c:Lo/Bb;

    iget-object v2, p0, Lo/co$14;->b:Ljava/util/List;

    iget-object v3, p0, Lo/co$14;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2, v3}, Lo/ci;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
