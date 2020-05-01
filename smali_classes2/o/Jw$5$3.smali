.class Lo/Jw$5$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw$5;->a(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Jw$5;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/Jw$5;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lo/Jw$5$3;->b:Lo/Jw$5;

    iput-object p2, p0, Lo/Jw$5$3;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 911
    iget-object v0, p0, Lo/Jw$5$3;->b:Lo/Jw$5;

    iget-object v0, v0, Lo/Jw$5;->b:Lo/Jw;

    iget-object v1, p0, Lo/Jw$5$3;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1}, Lo/Jw;->a(Lo/Jw;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
