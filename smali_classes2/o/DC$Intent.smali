.class public final Lo/DC$Intent;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intent"
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$Intent;->c:Ljava/lang/String;

    iput-object p2, p0, Lo/DC$Intent;->d:Ljava/lang/String;

    iput p3, p0, Lo/DC$Intent;->b:I

    iput-boolean p4, p0, Lo/DC$Intent;->e:Z

    iput-boolean p5, p0, Lo/DC$Intent;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/DC$Intent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/DC$Intent;->a:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/DC$Intent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/DC$Intent;->e:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 26
    iget v0, p0, Lo/DC$Intent;->b:I

    return v0
.end method
