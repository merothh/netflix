.class public final Lo/fn;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fn$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/fn$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fn$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fn$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fn;->d:Lo/fn$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23476"

    .line 12
    iput-object v0, p0, Lo/fn;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lo/fn;->b:I

    const-string v0, "Extras Brazil"

    .line 16
    iput-object v0, p0, Lo/fn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/fn;->c:Ljava/lang/String;

    return-object v0
.end method
