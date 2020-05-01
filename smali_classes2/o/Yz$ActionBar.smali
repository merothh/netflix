.class public final Lo/Yz$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Yz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field private final c:Lo/Yn;

.field final synthetic d:Lo/Yz;


# direct methods
.method public constructor <init>(Lo/Yz;Ljava/lang/String;Lo/Yn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/Yn;",
            ")V"
        }
    .end annotation

    const-string v0, "logTag"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewItem"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iput-object p1, p0, Lo/Yz$ActionBar;->d:Lo/Yz;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lo/Yz$ActionBar;->c:Lo/Yn;

    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 537
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 538
    iget-object v0, p0, Lo/Yz$ActionBar;->d:Lo/Yz;

    iget-object v1, p0, Lo/Yz$ActionBar;->c:Lo/Yn;

    invoke-virtual {v0, p1, p2, v1}, Lo/Yz;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V

    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 532
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 533
    iget-object v0, p0, Lo/Yz$ActionBar;->d:Lo/Yz;

    iget-object v1, p0, Lo/Yz$ActionBar;->c:Lo/Yn;

    invoke-virtual {v0, p1, p2, v1}, Lo/Yz;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V

    return-void
.end method
