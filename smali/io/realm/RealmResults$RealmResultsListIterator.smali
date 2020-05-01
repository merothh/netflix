.class Lio/realm/RealmResults$RealmResultsListIterator;
.super Lio/realm/RealmResults$RealmResultsIterator;
.source "RealmResults.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/RealmResults",
        "<TE;>.RealmResultsIterator;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lio/realm/RealmResults;I)V
    .locals 3

    .prologue
    .line 769
    iput-object p1, p0, Lio/realm/RealmResults$RealmResultsListIterator;->this$0:Lio/realm/RealmResults;

    invoke-direct {p0, p1}, Lio/realm/RealmResults$RealmResultsIterator;-><init>(Lio/realm/RealmResults;)V

    .line 770
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 771
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    .line 775
    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]. Yours was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Adding an element is not supported. Use Realm.createObject() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 767
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmResults$RealmResultsListIterator;->add(Lio/realm/RealmModel;)V

    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lio/realm/RealmResults$RealmResultsListIterator;->this$0:Lio/realm/RealmResults;

    iget-object v0, v0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 810
    invoke-virtual {p0}, Lio/realm/RealmResults$RealmResultsListIterator;->checkRealmIsStable()V

    .line 812
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmResults$RealmResultsListIterator;->this$0:Lio/realm/RealmResults;

    iget v1, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    .line 813
    iget v1, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    return-object v0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot access index less than zero. This was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0}, Lio/realm/RealmResults$RealmResultsListIterator;->previous()Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lio/realm/RealmResults$RealmResultsListIterator;->pos:I

    return v0
.end method

.method public set(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 836
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Replacing and element is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 767
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmResults$RealmResultsListIterator;->set(Lio/realm/RealmModel;)V

    return-void
.end method
