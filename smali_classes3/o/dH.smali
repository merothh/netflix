.class public final Lo/dH;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dH$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/dH$TaskDescription;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dH$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dH$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dH;->d:Lo/dH$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "10763"

    .line 13
    iput-object v0, p0, Lo/dH;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/dH;->b:I

    const-string v0, "Increased Subtitle Request Retries"

    .line 17
    iput-object v0, p0, Lo/dH;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/dH;->c:Ljava/lang/String;

    return-object v0
.end method
