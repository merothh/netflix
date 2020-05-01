.class public final Lo/eR;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eR$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/eR$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eR$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eR$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/eR;->b:Lo/eR$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "20888"

    .line 7
    iput-object v0, p0, Lo/eR;->e:Ljava/lang/String;

    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lo/eR;->c:I

    const-string v0, "Manifest LDL"

    .line 11
    iput-object v0, p0, Lo/eR;->a:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/eR;->b:Lo/eR$TaskDescription;

    invoke-virtual {v0}, Lo/eR$TaskDescription;->e()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/eR;->b:Lo/eR$TaskDescription;

    invoke-virtual {v0}, Lo/eR$TaskDescription;->c()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/eR;->b:Lo/eR$TaskDescription;

    invoke-virtual {v0}, Lo/eR$TaskDescription;->a()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/eR;->b:Lo/eR$TaskDescription;

    invoke-virtual {v0}, Lo/eR$TaskDescription;->b()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/eR;->b:Lo/eR$TaskDescription;

    invoke-virtual {v0}, Lo/eR$TaskDescription;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/eR;->e:Ljava/lang/String;

    return-object v0
.end method
