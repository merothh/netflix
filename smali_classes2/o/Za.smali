.class public Lo/Za;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

.field private final d:Lo/BC;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/BC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Za;->a:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iput-object p2, p0, Lo/Za;->d:Lo/BC;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/Za;->a:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v1, p0, Lo/Za;->d:Lo/BC;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/BC;Ljava/lang/Throwable;)V

    return-void
.end method
