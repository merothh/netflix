.class public final Lo/fk;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fk$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/fk$TaskDescription;


# instance fields
.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fk$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fk$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fk;->a:Lo/fk$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23144"

    .line 14
    iput-object v0, p0, Lo/fk;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lo/fk;->c:I

    const-string v0, "DP Lite Play Button"

    .line 20
    iput-object v0, p0, Lo/fk;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/fk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
