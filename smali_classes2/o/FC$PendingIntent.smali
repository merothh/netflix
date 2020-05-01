.class public final Lo/FC$PendingIntent;
.super Lo/FC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "JII)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lo/FC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FC$PendingIntent;->c:Ljava/util/List;

    iput-object p2, p0, Lo/FC$PendingIntent;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-wide p3, p0, Lo/FC$PendingIntent;->b:J

    iput p5, p0, Lo/FC$PendingIntent;->a:I

    iput p6, p0, Lo/FC$PendingIntent;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/FC$PendingIntent;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 85
    iget v0, p0, Lo/FC$PendingIntent;->e:I

    return v0
.end method

.method public final c()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/FC$PendingIntent;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 85
    iget v0, p0, Lo/FC$PendingIntent;->a:I

    return v0
.end method

.method public final e()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lo/FC$PendingIntent;->b:J

    return-wide v0
.end method
