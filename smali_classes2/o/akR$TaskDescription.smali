.class public final Lo/akR$TaskDescription;
.super Lo/akh;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/akR;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/akh<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/akR;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lo/akR;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lo/akR$TaskDescription;->c:Lo/akR;

    invoke-direct {p0}, Lo/akh;-><init>()V

    .line 112
    invoke-virtual {p1}, Lo/akR;->size()I

    move-result v0

    iput v0, p0, Lo/akR$TaskDescription;->d:I

    .line 113
    invoke-static {p1}, Lo/akR;->a(Lo/akR;)I

    move-result p1

    iput p1, p0, Lo/akR$TaskDescription;->e:I

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    .line 116
    iget v0, p0, Lo/akR$TaskDescription;->d:I

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lo/akR$TaskDescription;->b()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lo/akR$TaskDescription;->c:Lo/akR;

    invoke-static {v0}, Lo/akR;->c(Lo/akR;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lo/akR$TaskDescription;->e:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lo/akR$TaskDescription;->e(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lo/akR$TaskDescription;->c:Lo/akR;

    iget v1, p0, Lo/akR$TaskDescription;->e:I

    add-int/lit8 v1, v1, 0x1

    .line 208
    invoke-static {v0}, Lo/akR;->d(Lo/akR;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lo/akR$TaskDescription;->e:I

    .line 122
    iget v0, p0, Lo/akR$TaskDescription;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/akR$TaskDescription;->d:I

    :goto_0
    return-void
.end method
