.class Lo/agD;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SearchRecentSuggestions;


# instance fields
.field private final b:Lo/TableLayout;


# direct methods
.method public constructor <init>(Lo/TableLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/agD;->b:Lo/TableLayout;

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/agD;->b:Lo/TableLayout;

    invoke-static {v0}, Lo/agB;->k(Lo/TableLayout;)Lo/agk;

    move-result-object v0

    return-object v0
.end method
