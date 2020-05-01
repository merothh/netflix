.class public final Lo/CR;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lo/CR;->b:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lo/CR;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lo/CR;->h:Z

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lo/CR;->d:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lo/CR;->b:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lo/CR;->e:Ljava/lang/String;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lo/CR;->a:Z

    return-void
.end method

.method public final e(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lo/CR;->c:J

    return-void
.end method
