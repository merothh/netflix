.class public Lo/bY$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# static fields
.field public static a:Lo/bY$TaskDescription;

.field public static b:Lo/bY$TaskDescription;

.field public static c:Lo/bY$TaskDescription;

.field public static d:Lo/bY$TaskDescription;

.field public static e:Lo/bY$TaskDescription;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lo/bY$TaskDescription;

    const-string v1, "voip"

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/bY$TaskDescription;->b:Lo/bY$TaskDescription;

    .line 45
    new-instance v0, Lo/bY$TaskDescription;

    const-string v1, "InAppWidevine"

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/bY$TaskDescription;->d:Lo/bY$TaskDescription;

    .line 47
    new-instance v0, Lo/bY$TaskDescription;

    const-string v1, "vodec_libs"

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/bY$TaskDescription;->c:Lo/bY$TaskDescription;

    .line 49
    new-instance v0, Lo/bY$TaskDescription;

    const-string v1, "partnermodule"

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    .line 52
    new-instance v0, Lo/bY$TaskDescription;

    const-string v1, "languages"

    invoke-direct {v0, v1}, Lo/bY$TaskDescription;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/bY$TaskDescription;->a:Lo/bY$TaskDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/bY$TaskDescription;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/bY$TaskDescription;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
