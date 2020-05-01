.class public final Lo/hj;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hj$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/hj$ActionBar;


# instance fields
.field private minVersionNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minVersionNumber"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hj$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hj$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/hj;->a:Lo/hj$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/hq;-><init>()V

    const v0, 0xbdfcb8

    .line 10
    iput v0, p0, Lo/hj;->minVersionNumber:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 10
    iget v0, p0, Lo/hj;->minVersionNumber:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "smsotpversioncheck"

    return-object v0
.end method
