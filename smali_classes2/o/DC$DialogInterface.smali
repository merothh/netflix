.class public final Lo/DC$DialogInterface;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogInterface"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$DialogInterface;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/DC$DialogInterface;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/DC$DialogInterface;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/DC$DialogInterface;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lo/DC$DialogInterface;->a:Z

    iput p6, p0, Lo/DC$DialogInterface;->h:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lo/DC$DialogInterface;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/DC$DialogInterface;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/DC$DialogInterface;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/DC$DialogInterface;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/DC$DialogInterface;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 20
    iget v0, p0, Lo/DC$DialogInterface;->h:I

    return v0
.end method
