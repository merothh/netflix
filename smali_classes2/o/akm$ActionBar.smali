.class final Lo/akm$ActionBar;
.super Lo/akm;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/akm<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final c:I

.field private d:I

.field private final e:Lo/akm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/akm<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/akm;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/akm<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lo/akm;-><init>()V

    iput-object p1, p0, Lo/akm$ActionBar;->e:Lo/akm;

    iput p2, p0, Lo/akm$ActionBar;->c:I

    .line 40
    sget-object p1, Lo/akm;->a:Lo/akm$StateListAnimator;

    iget p2, p0, Lo/akm$ActionBar;->c:I

    iget-object v0, p0, Lo/akm$ActionBar;->e:Lo/akm;

    invoke-virtual {v0}, Lo/akm;->size()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lo/akm$StateListAnimator;->c(III)V

    .line 41
    iget p1, p0, Lo/akm$ActionBar;->c:I

    sub-int/2addr p3, p1

    iput p3, p0, Lo/akm$ActionBar;->d:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 50
    iget v0, p0, Lo/akm$ActionBar;->d:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 45
    sget-object v0, Lo/akm;->a:Lo/akm$StateListAnimator;

    iget v1, p0, Lo/akm$ActionBar;->d:I

    invoke-virtual {v0, p1, v1}, Lo/akm$StateListAnimator;->b(II)V

    .line 47
    iget-object v0, p0, Lo/akm$ActionBar;->e:Lo/akm;

    iget v1, p0, Lo/akm$ActionBar;->c:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lo/akm;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
