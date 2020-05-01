.class final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lo/alB<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->e:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->c:Lo/alB;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lo/alB;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 76
    check-cast p3, Lo/alB;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;-><init>(ILjava/lang/String;Lo/alB;)V

    return-void
.end method


# virtual methods
.method public final a()Lo/alB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alB<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->c:Lo/alB;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->e:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;->a:Ljava/lang/String;

    return-object v0
.end method
