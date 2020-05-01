.class public final Lo/eH;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eH$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/eH$ActionBar;


# instance fields
.field private final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eH$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eH$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eH;->e:Lo/eH$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "19037"

    .line 29
    iput-object v0, p0, Lo/eH;->d:Ljava/lang/String;

    const-string v0, "Android: Tv Discovery"

    .line 31
    iput-object v0, p0, Lo/eH;->c:Ljava/lang/String;

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lo/eH;->a:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/eH;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
