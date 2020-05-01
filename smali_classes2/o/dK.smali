.class public final Lo/dK;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dK$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/dK$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dK$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dK$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "11466"

    .line 7
    iput-object v0, p0, Lo/dK;->a:Ljava/lang/String;

    const/4 v0, 0x6

    .line 9
    iput v0, p0, Lo/dK;->d:I

    const-string v0, "Downloads Merch"

    .line 11
    iput-object v0, p0, Lo/dK;->b:Ljava/lang/String;

    return-void
.end method

.method public static final D_()Z
    .locals 1

    sget-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {v0}, Lo/dK$TaskDescription;->b()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {v0}, Lo/dK$TaskDescription;->a()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {v0}, Lo/dK$TaskDescription;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/dK;->a:Ljava/lang/String;

    return-object v0
.end method
