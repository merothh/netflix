.class public final Lo/er;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/er$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/er$TaskDescription;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/er$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/er$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/er;->e:Lo/er$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "16272"

    .line 8
    iput-object v0, p0, Lo/er;->b:Ljava/lang/String;

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lo/er;->c:I

    const-string v0, "Downloaded For You"

    .line 12
    iput-object v0, p0, Lo/er;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/er;->b:Ljava/lang/String;

    return-object v0
.end method
