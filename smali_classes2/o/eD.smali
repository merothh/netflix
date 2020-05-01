.class public final Lo/eD;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eD$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/eD$Activity;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eD$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eD$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/eD;->a:Lo/eD$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18242"

    .line 12
    iput-object v0, p0, Lo/eD;->d:Ljava/lang/String;

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lo/eD;->e:I

    const-string v0, "Download from previews"

    .line 16
    iput-object v0, p0, Lo/eD;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/eD;->d:Ljava/lang/String;

    return-object v0
.end method
