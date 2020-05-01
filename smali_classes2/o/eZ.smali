.class public final Lo/eZ;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eZ$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/eZ$ActionBar;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eZ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eZ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eZ;->a:Lo/eZ$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "21667"

    .line 18
    iput-object v0, p0, Lo/eZ;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lo/eZ;->b:I

    const-string v0, "Playback in cutout area"

    .line 22
    iput-object v0, p0, Lo/eZ;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/eZ;->c:Ljava/lang/String;

    return-object v0
.end method
