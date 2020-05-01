.class public Lo/Tc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Td;


# instance fields
.field private final d:Lo/Cd;


# direct methods
.method public constructor <init>(Lo/Cd;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/Tc;->d:Lo/Cd;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Tc;->d:Lo/Cd;

    iget-object v0, v0, Lo/Cd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {p1}, Lo/Rv;->b(Landroid/content/Context;)Lo/Rv;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lo/Tc;->d:Lo/Cd;

    iget-object v0, v0, Lo/Cd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/Rv;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object p1, p0, Lo/Tc;->d:Lo/Cd;

    iget-object p1, p1, Lo/Cd;->b:Ljava/lang/String;

    return-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lo/Tc;->d:Lo/Cd;

    iget-object v0, v0, Lo/Cd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/Rv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Tc;->d:Lo/Cd;

    iget-boolean v0, v0, Lo/Cd;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/Tc;->d:Lo/Cd;

    iget-object v0, v0, Lo/Cd;->d:Ljava/lang/String;

    return-object v0
.end method
