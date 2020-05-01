.class public final Lo/UP$Application;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Z

.field private final d:Lo/Tv;

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/Tv;ZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "playbackWrapper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$Application;->d:Lo/Tv;

    iput-boolean p2, p0, Lo/UP$Application;->e:Z

    iput-object p3, p0, Lo/UP$Application;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lo/UP$Application;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lo/UP$Application;->c:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lo/UP$Application;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lo/Tv;
    .locals 1

    .line 144
    iget-object v0, p0, Lo/UP$Application;->d:Lo/Tv;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lo/UP$Application;->e:Z

    return v0
.end method
