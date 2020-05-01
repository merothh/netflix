.class Lo/agC;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SearchRecentSuggestions;


# static fields
.field public static final e:Lo/agC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/agC;

    invoke-direct {v0}, Lo/agC;-><init>()V

    sput-object v0, Lo/agC;->e:Lo/agC;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/netflix/model/leafs/ExtrasFeedItemSummaryImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/ExtrasFeedItemSummaryImpl;-><init>()V

    return-object v0
.end method
