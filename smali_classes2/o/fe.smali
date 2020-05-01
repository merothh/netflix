.class public final Lo/fe;
.super Lo/fD;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fe$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/fe$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fe$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fe$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fe;->b:Lo/fe$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fD;-><init>()V

    const-string v0, "superheavyexperimentation"

    .line 12
    iput-object v0, p0, Lo/fe;->c:Ljava/lang/String;

    const-string v0, "com.netflix.mediaclient.ui.superheavyexperimentation.impl.SuperHeavyExperimentationImpl"

    .line 15
    iput-object v0, p0, Lo/fe;->d:Ljava/lang/String;

    const-string v0, "22380"

    .line 17
    iput-object v0, p0, Lo/fe;->a:Ljava/lang/String;

    const/4 v0, 0x3

    .line 19
    iput v0, p0, Lo/fe;->j:I

    const-string v0, "Unbundle AB Test Code"

    .line 21
    iput-object v0, p0, Lo/fe;->g:Ljava/lang/String;

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/fe;->b:Lo/fe$TaskDescription;

    invoke-virtual {v0}, Lo/fe$TaskDescription;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/fe;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/fe;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/fe;->d:Ljava/lang/String;

    return-object v0
.end method
