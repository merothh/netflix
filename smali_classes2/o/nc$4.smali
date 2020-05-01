.class Lo/nc$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zQ$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nc;->a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/nc;


# direct methods
.method constructor <init>(Lo/nc;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/nc$4;->d:Lo/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "handleSafetyNetAttestation: Not supported, even if device has GPS!"

    .line 194
    invoke-static {v0}, Lo/nc;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lo/nc$4;->d:Lo/nc;

    invoke-static {v0}, Lo/nc;->e(Lo/nc;)Lo/nh;

    move-result-object v0

    const-string v1, "Not supported, even if device has GPS"

    invoke-virtual {v0, v1}, Lo/nh;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lo/nc$4;->d:Lo/nc;

    invoke-static {v0}, Lo/nc;->a(Lo/nc;)V

    .line 197
    iget-object v0, p0, Lo/nc$4;->d:Lo/nc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/nc;->e(Lo/nc;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "handleSafetyNetAttestation: error, even if device has GPS"

    .line 186
    invoke-static {v0}, Lo/nc;->d(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lo/nc$4;->d:Lo/nc;

    invoke-static {v0}, Lo/nc;->e(Lo/nc;)Lo/nh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/nh;->d(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lo/nc$4;->d:Lo/nc;

    invoke-static {p1}, Lo/nc;->a(Lo/nc;)V

    .line 189
    iget-object p1, p0, Lo/nc$4;->d:Lo/nc;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/nc;->e(Lo/nc;Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/nc$4;->d:Lo/nc;

    invoke-static {v0, p1}, Lo/nc;->d(Lo/nc;Ljava/lang/String;)V

    return-void
.end method
