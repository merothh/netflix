.class public final Lo/ER;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/Bb;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Bb;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seasons"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ER;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p2, p0, Lo/ER;->b:Lo/Bb;

    iput-object p3, p0, Lo/ER;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Lo/Bb;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/ER;->b:Lo/Bb;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/ER;->c:Ljava/util/List;

    return-object v0
.end method
