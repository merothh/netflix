.class public final Lo/UP$Resources;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resources"
.end annotation


# instance fields
.field private final a:Lo/Tv;

.field private final b:Lo/Ug;


# direct methods
.method public constructor <init>(Lo/Ug;Lo/Tv;)V
    .locals 1

    const-string v0, "postPlayManagerFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackVideoWrapper"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$Resources;->b:Lo/Ug;

    iput-object p2, p0, Lo/UP$Resources;->a:Lo/Tv;

    return-void
.end method


# virtual methods
.method public final c()Lo/Ug;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/UP$Resources;->b:Lo/Ug;

    return-object v0
.end method

.method public final e()Lo/Tv;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/UP$Resources;->a:Lo/Tv;

    return-object v0
.end method
