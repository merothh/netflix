.class public final Lo/UP$Theme;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Theme"
.end annotation


# instance fields
.field private final c:Z

.field private final d:Lo/Ug;

.field private final e:Lo/Tv;


# direct methods
.method public constructor <init>(Lo/Ug;Lo/Tv;Z)V
    .locals 1

    const-string v0, "postPlayManagerFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackVideoWrapper"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$Theme;->d:Lo/Ug;

    iput-object p2, p0, Lo/UP$Theme;->e:Lo/Tv;

    iput-boolean p3, p0, Lo/UP$Theme;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lo/Tv;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/UP$Theme;->e:Lo/Tv;

    return-object v0
.end method

.method public final b()Lo/Ug;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/UP$Theme;->d:Lo/Ug;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lo/UP$Theme;->c:Z

    return v0
.end method
