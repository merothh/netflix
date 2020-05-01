.class public final Lo/FC$Dialog;
.super Lo/FC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/app/Status;

.field private final c:Lo/AS;


# direct methods
.method public constructor <init>(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lo/FC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FC$Dialog;->c:Lo/AS;

    iput-object p2, p0, Lo/FC$Dialog;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final c()Lo/AS;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/FC$Dialog;->c:Lo/AS;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/FC$Dialog;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method
