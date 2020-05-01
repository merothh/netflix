.class public final Lo/eu;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eu$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/eu$ActionBar;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eu$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eu$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eu;->b:Lo/eu$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "16551"

    .line 13
    iput-object v0, p0, Lo/eu;->c:Ljava/lang/String;

    const/16 v0, 0x8

    .line 15
    iput v0, p0, Lo/eu;->d:I

    const-string v0, "Extras: Increasing Feed Relevance"

    .line 17
    iput-object v0, p0, Lo/eu;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/eu;->c:Ljava/lang/String;

    return-object v0
.end method
