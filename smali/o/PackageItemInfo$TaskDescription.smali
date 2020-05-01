.class public Lo/PackageItemInfo$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ServiceConnection$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PackageItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/view/ActionMode$Callback;

.field final d:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lo/PackageItemInfo$TaskDescription;->e:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lo/PackageItemInfo$TaskDescription;->c:Landroid/view/ActionMode$Callback;

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PackageItemInfo$TaskDescription;->b:Ljava/util/ArrayList;

    .line 153
    new-instance p1, Lo/TextWatcher;

    invoke-direct {p1}, Lo/TextWatcher;-><init>()V

    iput-object p1, p0, Lo/PackageItemInfo$TaskDescription;->d:Lo/TextWatcher;

    return-void
.end method

.method private d(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 2

    .line 181
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->e:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lo/ExtractedTextRequest;

    invoke-static {v0, v1}, Lo/Uri;->e(Landroid/content/Context;Lo/ExtractedTextRequest;)Landroid/view/Menu;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lo/PackageItemInfo$TaskDescription;->d:Lo/TextWatcher;

    invoke-virtual {v1, p1, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Lo/ServiceConnection;)Landroid/view/ActionMode;
    .locals 4

    .line 191
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    iget-object v2, p0, Lo/PackageItemInfo$TaskDescription;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PackageItemInfo;

    if-eqz v2, :cond_0

    .line 193
    iget-object v3, v2, Lo/PackageItemInfo;->c:Lo/ServiceConnection;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lo/PackageItemInfo;

    iget-object v1, p0, Lo/PackageItemInfo$TaskDescription;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lo/PackageItemInfo;-><init>(Landroid/content/Context;Lo/ServiceConnection;)V

    .line 202
    iget-object p1, p0, Lo/PackageItemInfo$TaskDescription;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public d(Lo/ServiceConnection;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->c:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/PackageItemInfo$TaskDescription;->b(Lo/ServiceConnection;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public d(Lo/ServiceConnection;Landroid/view/Menu;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->c:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/PackageItemInfo$TaskDescription;->b(Lo/ServiceConnection;)Landroid/view/ActionMode;

    move-result-object p1

    .line 159
    invoke-direct {p0, p2}, Lo/PackageItemInfo$TaskDescription;->d(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 158
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public e(Lo/ServiceConnection;Landroid/view/Menu;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->c:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/PackageItemInfo$TaskDescription;->b(Lo/ServiceConnection;)Landroid/view/ActionMode;

    move-result-object p1

    .line 165
    invoke-direct {p0, p2}, Lo/PackageItemInfo$TaskDescription;->d(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 164
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public e(Lo/ServiceConnection;Landroid/view/MenuItem;)Z
    .locals 2

    .line 171
    iget-object v0, p0, Lo/PackageItemInfo$TaskDescription;->c:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/PackageItemInfo$TaskDescription;->b(Lo/ServiceConnection;)Landroid/view/ActionMode;

    move-result-object p1

    iget-object v1, p0, Lo/PackageItemInfo$TaskDescription;->e:Landroid/content/Context;

    check-cast p2, Lo/InputConnection;

    .line 172
    invoke-static {v1, p2}, Lo/Uri;->d(Landroid/content/Context;Lo/InputConnection;)Landroid/view/MenuItem;

    move-result-object p2

    .line 171
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
