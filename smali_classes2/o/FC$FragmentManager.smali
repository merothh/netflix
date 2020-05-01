.class public final Lo/FC$FragmentManager;
.super Lo/FC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# instance fields
.field private final a:Lo/AU;


# direct methods
.method public constructor <init>(Lo/AU;)V
    .locals 1

    const-string v0, "kidsCharacterDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lo/FC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FC$FragmentManager;->a:Lo/AU;

    return-void
.end method


# virtual methods
.method public final c()Lo/AU;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/FC$FragmentManager;->a:Lo/AU;

    return-object v0
.end method
