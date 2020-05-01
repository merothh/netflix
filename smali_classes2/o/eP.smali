.class public final Lo/eP;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eP$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/eP$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eP$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eP$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/eP;->b:Lo/eP$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "19119"

    .line 14
    iput-object v0, p0, Lo/eP;->a:Ljava/lang/String;

    const-string v0, "Adjust PostPlay Prefetch Position"

    .line 16
    iput-object v0, p0, Lo/eP;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lo/eP;->c:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/eP;->b:Lo/eP$TaskDescription;

    invoke-virtual {v0}, Lo/eP$TaskDescription;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/eP;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "persistent_ab19119"

    return-object v0
.end method
