.class Lo/afm;
.super Lo/aeT;
.source ""

# interfaces
.implements Lo/afu$Application;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/aeT;-><init>(I)V

    return-void
.end method

.method static c()Lo/afm;
    .locals 2

    .line 9
    sget v0, Lo/aed;->c:I

    .line 10
    invoke-static {}, Lo/ady;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 15
    :cond_0
    new-instance v1, Lo/afm;

    invoke-direct {v1, v0}, Lo/afm;-><init>(I)V

    return-object v1
.end method
