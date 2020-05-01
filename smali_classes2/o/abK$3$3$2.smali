.class Lo/abK$3$3$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abK$3$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abK$3$3;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/Ik;


# direct methods
.method constructor <init>(Lo/abK$3$3;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/abK$3$3$2;->a:Lo/abK$3$3;

    iput-object p2, p0, Lo/abK$3$3$2;->e:Lo/Ik;

    iput-object p3, p0, Lo/abK$3$3$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lo/abK$3$3$2;->e:Lo/Ik;

    iget-object v1, p0, Lo/abK$3$3$2;->c:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
