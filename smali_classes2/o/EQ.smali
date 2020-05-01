.class public final Lo/EQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/app/Status;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodes"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/EQ;->b:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p2, p0, Lo/EQ;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/EQ;->c:Ljava/util/List;

    return-object v0
.end method
